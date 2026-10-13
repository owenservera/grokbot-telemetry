# sandbox_telemetry_parse — 2026-10-13 21:20:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1227140 lines=3213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2372 |
| `chrome_profile_sample` | 833 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2372} |
| `chromeGpuPssKb` | {'int': 2372} |
| `chromeOtherPssKb` | {'int': 2372} |
| `chromeProcesses` | {'int': 2372} |
| `chromeProfiles` | {'int': 2372} |
| `chromeRendererMaxPssKb` | {'int': 2372} |
| `chromeRendererPssKb` | {'int': 2372} |
| `chromeRenderers` | {'int': 2372} |
| `chromeTabs` | {'int': 2372} |
| `chromeTabsProbedProfiles` | {'int': 2372} |
| `chromeUtilityPssKb` | {'int': 2372} |
| `desktopPssKb` | {'int': 2372} |
| `hostPssKb` | {'int': 2372} |
| `kind` | {'str': 2372} |
| `memAvailableKb` | {'int': 2372} |
| `memTotalKb` | {'int': 2372} |
| `otherPssKb` | {'int': 2372} |
| `processes` | {'int': 2372} |
| `pssFallbackProcesses` | {'int': 2372} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 832} |
| `display` | {'int': 833} |
| `kind` | {'str': 833} |
| `processes` | {'int': 833} |
| `pssKb` | {'int': 833} |
| `rendererMaxPssKb` | {'int': 833} |
| `renderers` | {'int': 833} |
| `tabs` | {'int': 833} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-13 21:41:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1233529 lines=3233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2382 |
| `chrome_profile_sample` | 843 |
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
| `chromeBrowserPssKb` | {'int': 2382} |
| `chromeGpuPssKb` | {'int': 2382} |
| `chromeOtherPssKb` | {'int': 2382} |
| `chromeProcesses` | {'int': 2382} |
| `chromeProfiles` | {'int': 2382} |
| `chromeRendererMaxPssKb` | {'int': 2382} |
| `chromeRendererPssKb` | {'int': 2382} |
| `chromeRenderers` | {'int': 2382} |
| `chromeTabs` | {'int': 2382} |
| `chromeTabsProbedProfiles` | {'int': 2382} |
| `chromeUtilityPssKb` | {'int': 2382} |
| `desktopPssKb` | {'int': 2382} |
| `hostPssKb` | {'int': 2382} |
| `kind` | {'str': 2382} |
| `memAvailableKb` | {'int': 2382} |
| `memTotalKb` | {'int': 2382} |
| `otherPssKb` | {'int': 2382} |
| `processes` | {'int': 2382} |
| `pssFallbackProcesses` | {'int': 2382} |

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
| `cpuMillicores` | {'int': 842} |
| `display` | {'int': 843} |
| `kind` | {'str': 843} |
| `processes` | {'int': 843} |
| `pssKb` | {'int': 843} |
| `rendererMaxPssKb` | {'int': 843} |
| `renderers` | {'int': 843} |
| `tabs` | {'int': 843} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

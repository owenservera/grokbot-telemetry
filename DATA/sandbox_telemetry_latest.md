# sandbox_telemetry_parse — 2026-10-13 15:17:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1142197 lines=2947
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2239 |
| `chrome_profile_sample` | 700 |
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
| `chromeBrowserPssKb` | {'int': 2239} |
| `chromeGpuPssKb` | {'int': 2239} |
| `chromeOtherPssKb` | {'int': 2239} |
| `chromeProcesses` | {'int': 2239} |
| `chromeProfiles` | {'int': 2239} |
| `chromeRendererMaxPssKb` | {'int': 2239} |
| `chromeRendererPssKb` | {'int': 2239} |
| `chromeRenderers` | {'int': 2239} |
| `chromeTabs` | {'int': 2239} |
| `chromeTabsProbedProfiles` | {'int': 2239} |
| `chromeUtilityPssKb` | {'int': 2239} |
| `desktopPssKb` | {'int': 2239} |
| `hostPssKb` | {'int': 2239} |
| `kind` | {'str': 2239} |
| `memAvailableKb` | {'int': 2239} |
| `memTotalKb` | {'int': 2239} |
| `otherPssKb` | {'int': 2239} |
| `processes` | {'int': 2239} |
| `pssFallbackProcesses` | {'int': 2239} |

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
| `cpuMillicores` | {'int': 699} |
| `display` | {'int': 700} |
| `kind` | {'str': 700} |
| `processes` | {'int': 700} |
| `pssKb` | {'int': 700} |
| `rendererMaxPssKb` | {'int': 700} |
| `renderers` | {'int': 700} |
| `tabs` | {'int': 700} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

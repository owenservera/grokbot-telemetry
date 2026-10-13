# sandbox_telemetry_parse — 2026-10-13 11:44:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1052811 lines=2667
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2099 |
| `chrome_profile_sample` | 560 |
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
| `chromeBrowserPssKb` | {'int': 2099} |
| `chromeGpuPssKb` | {'int': 2099} |
| `chromeOtherPssKb` | {'int': 2099} |
| `chromeProcesses` | {'int': 2099} |
| `chromeProfiles` | {'int': 2099} |
| `chromeRendererMaxPssKb` | {'int': 2099} |
| `chromeRendererPssKb` | {'int': 2099} |
| `chromeRenderers` | {'int': 2099} |
| `chromeTabs` | {'int': 2099} |
| `chromeTabsProbedProfiles` | {'int': 2099} |
| `chromeUtilityPssKb` | {'int': 2099} |
| `desktopPssKb` | {'int': 2099} |
| `hostPssKb` | {'int': 2099} |
| `kind` | {'str': 2099} |
| `memAvailableKb` | {'int': 2099} |
| `memTotalKb` | {'int': 2099} |
| `otherPssKb` | {'int': 2099} |
| `processes` | {'int': 2099} |
| `pssFallbackProcesses` | {'int': 2099} |

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
| `cpuMillicores` | {'int': 559} |
| `display` | {'int': 560} |
| `kind` | {'str': 560} |
| `processes` | {'int': 560} |
| `pssKb` | {'int': 560} |
| `rendererMaxPssKb` | {'int': 560} |
| `renderers` | {'int': 560} |
| `tabs` | {'int': 560} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

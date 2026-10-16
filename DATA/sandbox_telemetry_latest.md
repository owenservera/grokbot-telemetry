# sandbox_telemetry_parse — 2026-10-16 04:21:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=84714 lines=316
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 198 |
| `memory_sample` | 109 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 109} |
| `chromeGpuPssKb` | {'int': 109} |
| `chromeOtherPssKb` | {'int': 109} |
| `chromeProcesses` | {'int': 109} |
| `chromeProfiles` | {'int': 109} |
| `chromeRendererMaxPssKb` | {'int': 109} |
| `chromeRendererPssKb` | {'int': 109} |
| `chromeRenderers` | {'int': 109} |
| `chromeTabs` | {'int': 109} |
| `chromeTabsProbedProfiles` | {'int': 109} |
| `chromeUtilityPssKb` | {'int': 109} |
| `desktopPssKb` | {'int': 109} |
| `hostPssKb` | {'int': 109} |
| `kind` | {'str': 109} |
| `memAvailableKb` | {'int': 109} |
| `memTotalKb` | {'int': 109} |
| `otherPssKb` | {'int': 109} |
| `processes` | {'int': 109} |
| `pssFallbackProcesses` | {'int': 109} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 195} |
| `display` | {'int': 198} |
| `kind` | {'str': 198} |
| `processes` | {'int': 198} |
| `pssKb` | {'int': 198} |
| `rendererMaxPssKb` | {'int': 198} |
| `renderers` | {'int': 198} |
| `tabs` | {'int': 197} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

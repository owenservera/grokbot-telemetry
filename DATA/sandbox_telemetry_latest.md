# sandbox_telemetry_parse — 2026-10-13 13:49:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1119846 lines=2877
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2204 |
| `chrome_profile_sample` | 665 |
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
| `chromeBrowserPssKb` | {'int': 2204} |
| `chromeGpuPssKb` | {'int': 2204} |
| `chromeOtherPssKb` | {'int': 2204} |
| `chromeProcesses` | {'int': 2204} |
| `chromeProfiles` | {'int': 2204} |
| `chromeRendererMaxPssKb` | {'int': 2204} |
| `chromeRendererPssKb` | {'int': 2204} |
| `chromeRenderers` | {'int': 2204} |
| `chromeTabs` | {'int': 2204} |
| `chromeTabsProbedProfiles` | {'int': 2204} |
| `chromeUtilityPssKb` | {'int': 2204} |
| `desktopPssKb` | {'int': 2204} |
| `hostPssKb` | {'int': 2204} |
| `kind` | {'str': 2204} |
| `memAvailableKb` | {'int': 2204} |
| `memTotalKb` | {'int': 2204} |
| `otherPssKb` | {'int': 2204} |
| `processes` | {'int': 2204} |
| `pssFallbackProcesses` | {'int': 2204} |

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
| `cpuMillicores` | {'int': 664} |
| `display` | {'int': 665} |
| `kind` | {'str': 665} |
| `processes` | {'int': 665} |
| `pssKb` | {'int': 665} |
| `rendererMaxPssKb` | {'int': 665} |
| `renderers` | {'int': 665} |
| `tabs` | {'int': 665} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

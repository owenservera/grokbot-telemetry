# sandbox_telemetry_parse — 2026-10-13 00:55:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=735825 lines=1671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1601 |
| `chrome_profile_sample` | 62 |
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
| `chromeBrowserPssKb` | {'int': 1601} |
| `chromeGpuPssKb` | {'int': 1601} |
| `chromeOtherPssKb` | {'int': 1601} |
| `chromeProcesses` | {'int': 1601} |
| `chromeProfiles` | {'int': 1601} |
| `chromeRendererMaxPssKb` | {'int': 1601} |
| `chromeRendererPssKb` | {'int': 1601} |
| `chromeRenderers` | {'int': 1601} |
| `chromeTabs` | {'int': 1601} |
| `chromeTabsProbedProfiles` | {'int': 1601} |
| `chromeUtilityPssKb` | {'int': 1601} |
| `desktopPssKb` | {'int': 1601} |
| `hostPssKb` | {'int': 1601} |
| `kind` | {'str': 1601} |
| `memAvailableKb` | {'int': 1601} |
| `memTotalKb` | {'int': 1601} |
| `otherPssKb` | {'int': 1601} |
| `processes` | {'int': 1601} |
| `pssFallbackProcesses` | {'int': 1601} |

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
| `cpuMillicores` | {'int': 61} |
| `display` | {'int': 62} |
| `kind` | {'str': 62} |
| `processes` | {'int': 62} |
| `pssKb` | {'int': 62} |
| `rendererMaxPssKb` | {'int': 62} |
| `renderers` | {'int': 62} |
| `tabs` | {'int': 62} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

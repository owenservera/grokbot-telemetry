# sandbox_telemetry_parse — 2026-10-16 23:53:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=937101 lines=3502
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2322 |
| `memory_sample` | 1171 |
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
| `chromeBrowserPssKb` | {'int': 1171} |
| `chromeGpuPssKb` | {'int': 1171} |
| `chromeOtherPssKb` | {'int': 1171} |
| `chromeProcesses` | {'int': 1171} |
| `chromeProfiles` | {'int': 1171} |
| `chromeRendererMaxPssKb` | {'int': 1171} |
| `chromeRendererPssKb` | {'int': 1171} |
| `chromeRenderers` | {'int': 1171} |
| `chromeTabs` | {'int': 1171} |
| `chromeTabsProbedProfiles` | {'int': 1171} |
| `chromeUtilityPssKb` | {'int': 1171} |
| `desktopPssKb` | {'int': 1171} |
| `hostPssKb` | {'int': 1171} |
| `kind` | {'str': 1171} |
| `memAvailableKb` | {'int': 1171} |
| `memTotalKb` | {'int': 1171} |
| `otherPssKb` | {'int': 1171} |
| `processes` | {'int': 1171} |
| `pssFallbackProcesses` | {'int': 1171} |

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
| `cpuMillicores` | {'int': 2319} |
| `display` | {'int': 2322} |
| `kind` | {'str': 2322} |
| `processes` | {'int': 2322} |
| `pssKb` | {'int': 2322} |
| `rendererMaxPssKb` | {'int': 2322} |
| `renderers` | {'int': 2322} |
| `tabs` | {'int': 2321} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

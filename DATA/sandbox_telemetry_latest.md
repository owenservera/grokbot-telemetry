# sandbox_telemetry_parse — 2026-10-14 03:06:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=63198 lines=144
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 139 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 139} |
| `chromeGpuPssKb` | {'int': 139} |
| `chromeOtherPssKb` | {'int': 139} |
| `chromeProcesses` | {'int': 139} |
| `chromeProfiles` | {'int': 139} |
| `chromeRendererMaxPssKb` | {'int': 139} |
| `chromeRendererPssKb` | {'int': 139} |
| `chromeRenderers` | {'int': 139} |
| `chromeTabs` | {'int': 139} |
| `chromeTabsProbedProfiles` | {'int': 139} |
| `chromeUtilityPssKb` | {'int': 139} |
| `desktopPssKb` | {'int': 139} |
| `hostPssKb` | {'int': 139} |
| `kind` | {'str': 139} |
| `memAvailableKb` | {'int': 139} |
| `memTotalKb` | {'int': 139} |
| `otherPssKb` | {'int': 139} |
| `processes` | {'int': 139} |
| `pssFallbackProcesses` | {'int': 139} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-14 22:12:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=514746 lines=1143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1138 |
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
| `chromeBrowserPssKb` | {'int': 1138} |
| `chromeGpuPssKb` | {'int': 1138} |
| `chromeOtherPssKb` | {'int': 1138} |
| `chromeProcesses` | {'int': 1138} |
| `chromeProfiles` | {'int': 1138} |
| `chromeRendererMaxPssKb` | {'int': 1138} |
| `chromeRendererPssKb` | {'int': 1138} |
| `chromeRenderers` | {'int': 1138} |
| `chromeTabs` | {'int': 1138} |
| `chromeTabsProbedProfiles` | {'int': 1138} |
| `chromeUtilityPssKb` | {'int': 1138} |
| `desktopPssKb` | {'int': 1138} |
| `hostPssKb` | {'int': 1138} |
| `kind` | {'str': 1138} |
| `memAvailableKb` | {'int': 1138} |
| `memTotalKb` | {'int': 1138} |
| `otherPssKb` | {'int': 1138} |
| `processes` | {'int': 1138} |
| `pssFallbackProcesses` | {'int': 1138} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

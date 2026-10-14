# sandbox_telemetry_parse — 2026-10-14 20:25:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=471806 lines=1048
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1043 |
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
| `chromeBrowserPssKb` | {'int': 1043} |
| `chromeGpuPssKb` | {'int': 1043} |
| `chromeOtherPssKb` | {'int': 1043} |
| `chromeProcesses` | {'int': 1043} |
| `chromeProfiles` | {'int': 1043} |
| `chromeRendererMaxPssKb` | {'int': 1043} |
| `chromeRendererPssKb` | {'int': 1043} |
| `chromeRenderers` | {'int': 1043} |
| `chromeTabs` | {'int': 1043} |
| `chromeTabsProbedProfiles` | {'int': 1043} |
| `chromeUtilityPssKb` | {'int': 1043} |
| `desktopPssKb` | {'int': 1043} |
| `hostPssKb` | {'int': 1043} |
| `kind` | {'str': 1043} |
| `memAvailableKb` | {'int': 1043} |
| `memTotalKb` | {'int': 1043} |
| `otherPssKb` | {'int': 1043} |
| `processes` | {'int': 1043} |
| `pssFallbackProcesses` | {'int': 1043} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

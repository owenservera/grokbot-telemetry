# sandbox_telemetry_parse — 2026-10-14 22:23:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=517006 lines=1148
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1143 |
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
| `chromeBrowserPssKb` | {'int': 1143} |
| `chromeGpuPssKb` | {'int': 1143} |
| `chromeOtherPssKb` | {'int': 1143} |
| `chromeProcesses` | {'int': 1143} |
| `chromeProfiles` | {'int': 1143} |
| `chromeRendererMaxPssKb` | {'int': 1143} |
| `chromeRendererPssKb` | {'int': 1143} |
| `chromeRenderers` | {'int': 1143} |
| `chromeTabs` | {'int': 1143} |
| `chromeTabsProbedProfiles` | {'int': 1143} |
| `chromeUtilityPssKb` | {'int': 1143} |
| `desktopPssKb` | {'int': 1143} |
| `hostPssKb` | {'int': 1143} |
| `kind` | {'str': 1143} |
| `memAvailableKb` | {'int': 1143} |
| `memTotalKb` | {'int': 1143} |
| `otherPssKb` | {'int': 1143} |
| `processes` | {'int': 1143} |
| `pssFallbackProcesses` | {'int': 1143} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

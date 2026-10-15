# sandbox_telemetry_parse — 2026-10-15 15:46:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=931038 lines=2064
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2059 |
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
| `chromeBrowserPssKb` | {'int': 2059} |
| `chromeGpuPssKb` | {'int': 2059} |
| `chromeOtherPssKb` | {'int': 2059} |
| `chromeProcesses` | {'int': 2059} |
| `chromeProfiles` | {'int': 2059} |
| `chromeRendererMaxPssKb` | {'int': 2059} |
| `chromeRendererPssKb` | {'int': 2059} |
| `chromeRenderers` | {'int': 2059} |
| `chromeTabs` | {'int': 2059} |
| `chromeTabsProbedProfiles` | {'int': 2059} |
| `chromeUtilityPssKb` | {'int': 2059} |
| `desktopPssKb` | {'int': 2059} |
| `hostPssKb` | {'int': 2059} |
| `kind` | {'str': 2059} |
| `memAvailableKb` | {'int': 2059} |
| `memTotalKb` | {'int': 2059} |
| `otherPssKb` | {'int': 2059} |
| `processes` | {'int': 2059} |
| `pssFallbackProcesses` | {'int': 2059} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

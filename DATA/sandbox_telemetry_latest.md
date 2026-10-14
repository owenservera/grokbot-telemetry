# sandbox_telemetry_parse — 2026-10-14 07:13:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=159022 lines=356
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 351 |
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
| `chromeBrowserPssKb` | {'int': 351} |
| `chromeGpuPssKb` | {'int': 351} |
| `chromeOtherPssKb` | {'int': 351} |
| `chromeProcesses` | {'int': 351} |
| `chromeProfiles` | {'int': 351} |
| `chromeRendererMaxPssKb` | {'int': 351} |
| `chromeRendererPssKb` | {'int': 351} |
| `chromeRenderers` | {'int': 351} |
| `chromeTabs` | {'int': 351} |
| `chromeTabsProbedProfiles` | {'int': 351} |
| `chromeUtilityPssKb` | {'int': 351} |
| `desktopPssKb` | {'int': 351} |
| `hostPssKb` | {'int': 351} |
| `kind` | {'str': 351} |
| `memAvailableKb` | {'int': 351} |
| `memTotalKb` | {'int': 351} |
| `otherPssKb` | {'int': 351} |
| `processes` | {'int': 351} |
| `pssFallbackProcesses` | {'int': 351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-14 23:36:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=545482 lines=1211
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1206 |
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
| `chromeBrowserPssKb` | {'int': 1206} |
| `chromeGpuPssKb` | {'int': 1206} |
| `chromeOtherPssKb` | {'int': 1206} |
| `chromeProcesses` | {'int': 1206} |
| `chromeProfiles` | {'int': 1206} |
| `chromeRendererMaxPssKb` | {'int': 1206} |
| `chromeRendererPssKb` | {'int': 1206} |
| `chromeRenderers` | {'int': 1206} |
| `chromeTabs` | {'int': 1206} |
| `chromeTabsProbedProfiles` | {'int': 1206} |
| `chromeUtilityPssKb` | {'int': 1206} |
| `desktopPssKb` | {'int': 1206} |
| `hostPssKb` | {'int': 1206} |
| `kind` | {'str': 1206} |
| `memAvailableKb` | {'int': 1206} |
| `memTotalKb` | {'int': 1206} |
| `otherPssKb` | {'int': 1206} |
| `processes` | {'int': 1206} |
| `pssFallbackProcesses` | {'int': 1206} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

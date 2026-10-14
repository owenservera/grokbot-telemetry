# sandbox_telemetry_parse — 2026-10-14 16:44:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=385022 lines=856
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 851 |
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
| `chromeBrowserPssKb` | {'int': 851} |
| `chromeGpuPssKb` | {'int': 851} |
| `chromeOtherPssKb` | {'int': 851} |
| `chromeProcesses` | {'int': 851} |
| `chromeProfiles` | {'int': 851} |
| `chromeRendererMaxPssKb` | {'int': 851} |
| `chromeRendererPssKb` | {'int': 851} |
| `chromeRenderers` | {'int': 851} |
| `chromeTabs` | {'int': 851} |
| `chromeTabsProbedProfiles` | {'int': 851} |
| `chromeUtilityPssKb` | {'int': 851} |
| `desktopPssKb` | {'int': 851} |
| `hostPssKb` | {'int': 851} |
| `kind` | {'str': 851} |
| `memAvailableKb` | {'int': 851} |
| `memTotalKb` | {'int': 851} |
| `otherPssKb` | {'int': 851} |
| `processes` | {'int': 851} |
| `pssFallbackProcesses` | {'int': 851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

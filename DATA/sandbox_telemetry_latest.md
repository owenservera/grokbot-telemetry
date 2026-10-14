# sandbox_telemetry_parse — 2026-10-14 11:17:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=255298 lines=569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 564 |
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
| `chromeBrowserPssKb` | {'int': 564} |
| `chromeGpuPssKb` | {'int': 564} |
| `chromeOtherPssKb` | {'int': 564} |
| `chromeProcesses` | {'int': 564} |
| `chromeProfiles` | {'int': 564} |
| `chromeRendererMaxPssKb` | {'int': 564} |
| `chromeRendererPssKb` | {'int': 564} |
| `chromeRenderers` | {'int': 564} |
| `chromeTabs` | {'int': 564} |
| `chromeTabsProbedProfiles` | {'int': 564} |
| `chromeUtilityPssKb` | {'int': 564} |
| `desktopPssKb` | {'int': 564} |
| `hostPssKb` | {'int': 564} |
| `kind` | {'str': 564} |
| `memAvailableKb` | {'int': 564} |
| `memTotalKb` | {'int': 564} |
| `otherPssKb` | {'int': 564} |
| `processes` | {'int': 564} |
| `pssFallbackProcesses` | {'int': 564} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

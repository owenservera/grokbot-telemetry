# sandbox_telemetry_parse — 2026-10-15 11:03:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=824818 lines=1829
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1824 |
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
| `chromeBrowserPssKb` | {'int': 1824} |
| `chromeGpuPssKb` | {'int': 1824} |
| `chromeOtherPssKb` | {'int': 1824} |
| `chromeProcesses` | {'int': 1824} |
| `chromeProfiles` | {'int': 1824} |
| `chromeRendererMaxPssKb` | {'int': 1824} |
| `chromeRendererPssKb` | {'int': 1824} |
| `chromeRenderers` | {'int': 1824} |
| `chromeTabs` | {'int': 1824} |
| `chromeTabsProbedProfiles` | {'int': 1824} |
| `chromeUtilityPssKb` | {'int': 1824} |
| `desktopPssKb` | {'int': 1824} |
| `hostPssKb` | {'int': 1824} |
| `kind` | {'str': 1824} |
| `memAvailableKb` | {'int': 1824} |
| `memTotalKb` | {'int': 1824} |
| `otherPssKb` | {'int': 1824} |
| `processes` | {'int': 1824} |
| `pssFallbackProcesses` | {'int': 1824} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

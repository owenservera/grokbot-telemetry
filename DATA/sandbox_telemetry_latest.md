# sandbox_telemetry_parse — 2026-10-15 18:56:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1002906 lines=2223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2218 |
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
| `chromeBrowserPssKb` | {'int': 2218} |
| `chromeGpuPssKb` | {'int': 2218} |
| `chromeOtherPssKb` | {'int': 2218} |
| `chromeProcesses` | {'int': 2218} |
| `chromeProfiles` | {'int': 2218} |
| `chromeRendererMaxPssKb` | {'int': 2218} |
| `chromeRendererPssKb` | {'int': 2218} |
| `chromeRenderers` | {'int': 2218} |
| `chromeTabs` | {'int': 2218} |
| `chromeTabsProbedProfiles` | {'int': 2218} |
| `chromeUtilityPssKb` | {'int': 2218} |
| `desktopPssKb` | {'int': 2218} |
| `hostPssKb` | {'int': 2218} |
| `kind` | {'str': 2218} |
| `memAvailableKb` | {'int': 2218} |
| `memTotalKb` | {'int': 2218} |
| `otherPssKb` | {'int': 2218} |
| `processes` | {'int': 2218} |
| `pssFallbackProcesses` | {'int': 2218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

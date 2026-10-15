# sandbox_telemetry_parse — 2026-10-16 01:05:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1143478 lines=2534
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2529 |
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
| `chromeBrowserPssKb` | {'int': 2529} |
| `chromeGpuPssKb` | {'int': 2529} |
| `chromeOtherPssKb` | {'int': 2529} |
| `chromeProcesses` | {'int': 2529} |
| `chromeProfiles` | {'int': 2529} |
| `chromeRendererMaxPssKb` | {'int': 2529} |
| `chromeRendererPssKb` | {'int': 2529} |
| `chromeRenderers` | {'int': 2529} |
| `chromeTabs` | {'int': 2529} |
| `chromeTabsProbedProfiles` | {'int': 2529} |
| `chromeUtilityPssKb` | {'int': 2529} |
| `desktopPssKb` | {'int': 2529} |
| `hostPssKb` | {'int': 2529} |
| `kind` | {'str': 2529} |
| `memAvailableKb` | {'int': 2529} |
| `memTotalKb` | {'int': 2529} |
| `otherPssKb` | {'int': 2529} |
| `processes` | {'int': 2529} |
| `pssFallbackProcesses` | {'int': 2529} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

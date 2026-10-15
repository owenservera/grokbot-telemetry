# sandbox_telemetry_parse — 2026-10-15 20:52:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1051270 lines=2330
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2325 |
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
| `chromeBrowserPssKb` | {'int': 2325} |
| `chromeGpuPssKb` | {'int': 2325} |
| `chromeOtherPssKb` | {'int': 2325} |
| `chromeProcesses` | {'int': 2325} |
| `chromeProfiles` | {'int': 2325} |
| `chromeRendererMaxPssKb` | {'int': 2325} |
| `chromeRendererPssKb` | {'int': 2325} |
| `chromeRenderers` | {'int': 2325} |
| `chromeTabs` | {'int': 2325} |
| `chromeTabsProbedProfiles` | {'int': 2325} |
| `chromeUtilityPssKb` | {'int': 2325} |
| `desktopPssKb` | {'int': 2325} |
| `hostPssKb` | {'int': 2325} |
| `kind` | {'str': 2325} |
| `memAvailableKb` | {'int': 2325} |
| `memTotalKb` | {'int': 2325} |
| `otherPssKb` | {'int': 2325} |
| `processes` | {'int': 2325} |
| `pssFallbackProcesses` | {'int': 2325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

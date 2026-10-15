# sandbox_telemetry_parse — 2026-10-15 21:40:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1068898 lines=2369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2364 |
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
| `chromeBrowserPssKb` | {'int': 2364} |
| `chromeGpuPssKb` | {'int': 2364} |
| `chromeOtherPssKb` | {'int': 2364} |
| `chromeProcesses` | {'int': 2364} |
| `chromeProfiles` | {'int': 2364} |
| `chromeRendererMaxPssKb` | {'int': 2364} |
| `chromeRendererPssKb` | {'int': 2364} |
| `chromeRenderers` | {'int': 2364} |
| `chromeTabs` | {'int': 2364} |
| `chromeTabsProbedProfiles` | {'int': 2364} |
| `chromeUtilityPssKb` | {'int': 2364} |
| `desktopPssKb` | {'int': 2364} |
| `hostPssKb` | {'int': 2364} |
| `kind` | {'str': 2364} |
| `memAvailableKb` | {'int': 2364} |
| `memTotalKb` | {'int': 2364} |
| `otherPssKb` | {'int': 2364} |
| `processes` | {'int': 2364} |
| `pssFallbackProcesses` | {'int': 2364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

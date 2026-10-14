# sandbox_telemetry_parse — 2026-10-14 07:04:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=155406 lines=348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 343 |
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
| `chromeBrowserPssKb` | {'int': 343} |
| `chromeGpuPssKb` | {'int': 343} |
| `chromeOtherPssKb` | {'int': 343} |
| `chromeProcesses` | {'int': 343} |
| `chromeProfiles` | {'int': 343} |
| `chromeRendererMaxPssKb` | {'int': 343} |
| `chromeRendererPssKb` | {'int': 343} |
| `chromeRenderers` | {'int': 343} |
| `chromeTabs` | {'int': 343} |
| `chromeTabsProbedProfiles` | {'int': 343} |
| `chromeUtilityPssKb` | {'int': 343} |
| `desktopPssKb` | {'int': 343} |
| `hostPssKb` | {'int': 343} |
| `kind` | {'str': 343} |
| `memAvailableKb` | {'int': 343} |
| `memTotalKb` | {'int': 343} |
| `otherPssKb` | {'int': 343} |
| `processes` | {'int': 343} |
| `pssFallbackProcesses` | {'int': 343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

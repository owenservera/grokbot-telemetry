# sandbox_telemetry_parse — 2026-10-14 07:26:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=162638 lines=364
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 359 |
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
| `chromeBrowserPssKb` | {'int': 359} |
| `chromeGpuPssKb` | {'int': 359} |
| `chromeOtherPssKb` | {'int': 359} |
| `chromeProcesses` | {'int': 359} |
| `chromeProfiles` | {'int': 359} |
| `chromeRendererMaxPssKb` | {'int': 359} |
| `chromeRendererPssKb` | {'int': 359} |
| `chromeRenderers` | {'int': 359} |
| `chromeTabs` | {'int': 359} |
| `chromeTabsProbedProfiles` | {'int': 359} |
| `chromeUtilityPssKb` | {'int': 359} |
| `desktopPssKb` | {'int': 359} |
| `hostPssKb` | {'int': 359} |
| `kind` | {'str': 359} |
| `memAvailableKb` | {'int': 359} |
| `memTotalKb` | {'int': 359} |
| `otherPssKb` | {'int': 359} |
| `processes` | {'int': 359} |
| `pssFallbackProcesses` | {'int': 359} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

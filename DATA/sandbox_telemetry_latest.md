# sandbox_telemetry_parse — 2026-10-14 16:57:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=389542 lines=866
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 861 |
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
| `chromeBrowserPssKb` | {'int': 861} |
| `chromeGpuPssKb` | {'int': 861} |
| `chromeOtherPssKb` | {'int': 861} |
| `chromeProcesses` | {'int': 861} |
| `chromeProfiles` | {'int': 861} |
| `chromeRendererMaxPssKb` | {'int': 861} |
| `chromeRendererPssKb` | {'int': 861} |
| `chromeRenderers` | {'int': 861} |
| `chromeTabs` | {'int': 861} |
| `chromeTabsProbedProfiles` | {'int': 861} |
| `chromeUtilityPssKb` | {'int': 861} |
| `desktopPssKb` | {'int': 861} |
| `hostPssKb` | {'int': 861} |
| `kind` | {'str': 861} |
| `memAvailableKb` | {'int': 861} |
| `memTotalKb` | {'int': 861} |
| `otherPssKb` | {'int': 861} |
| `processes` | {'int': 861} |
| `pssFallbackProcesses` | {'int': 861} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

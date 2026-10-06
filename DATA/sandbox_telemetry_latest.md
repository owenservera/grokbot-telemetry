# sandbox_telemetry_parse — 2026-10-06 13:52:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=406034 lines=895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 890 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 890} |
| `chromeGpuPssKb` | {'int': 890} |
| `chromeOtherPssKb` | {'int': 890} |
| `chromeProcesses` | {'int': 890} |
| `chromeProfiles` | {'int': 890} |
| `chromeRendererMaxPssKb` | {'int': 890} |
| `chromeRendererPssKb` | {'int': 890} |
| `chromeRenderers` | {'int': 890} |
| `chromeTabs` | {'int': 890} |
| `chromeTabsProbedProfiles` | {'int': 890} |
| `chromeUtilityPssKb` | {'int': 890} |
| `desktopPssKb` | {'int': 890} |
| `hostPssKb` | {'int': 890} |
| `kind` | {'str': 890} |
| `memAvailableKb` | {'int': 890} |
| `memTotalKb` | {'int': 890} |
| `otherPssKb` | {'int': 890} |
| `processes` | {'int': 890} |
| `pssFallbackProcesses` | {'int': 890} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

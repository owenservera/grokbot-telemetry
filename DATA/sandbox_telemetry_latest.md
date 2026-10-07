# sandbox_telemetry_parse — 2026-10-07 07:56:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=895045 lines=1967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1962 |
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
| `chromeBrowserPssKb` | {'int': 1962} |
| `chromeGpuPssKb` | {'int': 1962} |
| `chromeOtherPssKb` | {'int': 1962} |
| `chromeProcesses` | {'int': 1962} |
| `chromeProfiles` | {'int': 1962} |
| `chromeRendererMaxPssKb` | {'int': 1962} |
| `chromeRendererPssKb` | {'int': 1962} |
| `chromeRenderers` | {'int': 1962} |
| `chromeTabs` | {'int': 1962} |
| `chromeTabsProbedProfiles` | {'int': 1962} |
| `chromeUtilityPssKb` | {'int': 1962} |
| `desktopPssKb` | {'int': 1962} |
| `hostPssKb` | {'int': 1962} |
| `kind` | {'str': 1962} |
| `memAvailableKb` | {'int': 1962} |
| `memTotalKb` | {'int': 1962} |
| `otherPssKb` | {'int': 1962} |
| `processes` | {'int': 1962} |
| `pssFallbackProcesses` | {'int': 1962} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

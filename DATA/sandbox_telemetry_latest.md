# sandbox_telemetry_parse — 2026-10-06 13:02:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=384602 lines=848
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 843 |
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
| `chromeBrowserPssKb` | {'int': 843} |
| `chromeGpuPssKb` | {'int': 843} |
| `chromeOtherPssKb` | {'int': 843} |
| `chromeProcesses` | {'int': 843} |
| `chromeProfiles` | {'int': 843} |
| `chromeRendererMaxPssKb` | {'int': 843} |
| `chromeRendererPssKb` | {'int': 843} |
| `chromeRenderers` | {'int': 843} |
| `chromeTabs` | {'int': 843} |
| `chromeTabsProbedProfiles` | {'int': 843} |
| `chromeUtilityPssKb` | {'int': 843} |
| `desktopPssKb` | {'int': 843} |
| `hostPssKb` | {'int': 843} |
| `kind` | {'str': 843} |
| `memAvailableKb` | {'int': 843} |
| `memTotalKb` | {'int': 843} |
| `otherPssKb` | {'int': 843} |
| `processes` | {'int': 843} |
| `pssFallbackProcesses` | {'int': 843} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-07 15:00:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1087477 lines=2389
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2384 |
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
| `chromeBrowserPssKb` | {'int': 2384} |
| `chromeGpuPssKb` | {'int': 2384} |
| `chromeOtherPssKb` | {'int': 2384} |
| `chromeProcesses` | {'int': 2384} |
| `chromeProfiles` | {'int': 2384} |
| `chromeRendererMaxPssKb` | {'int': 2384} |
| `chromeRendererPssKb` | {'int': 2384} |
| `chromeRenderers` | {'int': 2384} |
| `chromeTabs` | {'int': 2384} |
| `chromeTabsProbedProfiles` | {'int': 2384} |
| `chromeUtilityPssKb` | {'int': 2384} |
| `desktopPssKb` | {'int': 2384} |
| `hostPssKb` | {'int': 2384} |
| `kind` | {'str': 2384} |
| `memAvailableKb` | {'int': 2384} |
| `memTotalKb` | {'int': 2384} |
| `otherPssKb` | {'int': 2384} |
| `processes` | {'int': 2384} |
| `pssFallbackProcesses` | {'int': 2384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

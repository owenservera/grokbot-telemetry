# sandbox_telemetry_parse — 2026-10-07 14:18:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1068781 lines=2348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2343 |
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
| `chromeBrowserPssKb` | {'int': 2343} |
| `chromeGpuPssKb` | {'int': 2343} |
| `chromeOtherPssKb` | {'int': 2343} |
| `chromeProcesses` | {'int': 2343} |
| `chromeProfiles` | {'int': 2343} |
| `chromeRendererMaxPssKb` | {'int': 2343} |
| `chromeRendererPssKb` | {'int': 2343} |
| `chromeRenderers` | {'int': 2343} |
| `chromeTabs` | {'int': 2343} |
| `chromeTabsProbedProfiles` | {'int': 2343} |
| `chromeUtilityPssKb` | {'int': 2343} |
| `desktopPssKb` | {'int': 2343} |
| `hostPssKb` | {'int': 2343} |
| `kind` | {'str': 2343} |
| `memAvailableKb` | {'int': 2343} |
| `memTotalKb` | {'int': 2343} |
| `otherPssKb` | {'int': 2343} |
| `processes` | {'int': 2343} |
| `pssFallbackProcesses` | {'int': 2343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

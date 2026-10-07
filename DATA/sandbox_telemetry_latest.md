# sandbox_telemetry_parse — 2026-10-07 13:32:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1047349 lines=2301
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2296 |
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
| `chromeBrowserPssKb` | {'int': 2296} |
| `chromeGpuPssKb` | {'int': 2296} |
| `chromeOtherPssKb` | {'int': 2296} |
| `chromeProcesses` | {'int': 2296} |
| `chromeProfiles` | {'int': 2296} |
| `chromeRendererMaxPssKb` | {'int': 2296} |
| `chromeRendererPssKb` | {'int': 2296} |
| `chromeRenderers` | {'int': 2296} |
| `chromeTabs` | {'int': 2296} |
| `chromeTabsProbedProfiles` | {'int': 2296} |
| `chromeUtilityPssKb` | {'int': 2296} |
| `desktopPssKb` | {'int': 2296} |
| `hostPssKb` | {'int': 2296} |
| `kind` | {'str': 2296} |
| `memAvailableKb` | {'int': 2296} |
| `memTotalKb` | {'int': 2296} |
| `otherPssKb` | {'int': 2296} |
| `processes` | {'int': 2296} |
| `pssFallbackProcesses` | {'int': 2296} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

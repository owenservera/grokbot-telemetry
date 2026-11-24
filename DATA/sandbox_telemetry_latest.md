# sandbox_telemetry_parse — 2026-11-24 04:28:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2129593 lines=4721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4706 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4706} |
| `chromeGpuPssKb` | {'int': 4706} |
| `chromeOtherPssKb` | {'int': 4706} |
| `chromeProcesses` | {'int': 4706} |
| `chromeProfiles` | {'int': 4706} |
| `chromeRendererMaxPssKb` | {'int': 4706} |
| `chromeRendererPssKb` | {'int': 4706} |
| `chromeRenderers` | {'int': 4706} |
| `chromeTabs` | {'int': 4706} |
| `chromeTabsProbedProfiles` | {'int': 4706} |
| `chromeUtilityPssKb` | {'int': 4706} |
| `desktopPssKb` | {'int': 4706} |
| `hostPssKb` | {'int': 4706} |
| `kind` | {'str': 4706} |
| `memAvailableKb` | {'int': 4706} |
| `memTotalKb` | {'int': 4706} |
| `otherPssKb` | {'int': 4706} |
| `processes` | {'int': 4706} |
| `pssFallbackProcesses` | {'int': 4706} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

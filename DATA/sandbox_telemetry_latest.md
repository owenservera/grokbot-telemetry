# sandbox_telemetry_parse — 2026-11-26 02:29:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3034193 lines=6721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6706 |
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
| `chromeBrowserPssKb` | {'int': 6706} |
| `chromeGpuPssKb` | {'int': 6706} |
| `chromeOtherPssKb` | {'int': 6706} |
| `chromeProcesses` | {'int': 6706} |
| `chromeProfiles` | {'int': 6706} |
| `chromeRendererMaxPssKb` | {'int': 6706} |
| `chromeRendererPssKb` | {'int': 6706} |
| `chromeRenderers` | {'int': 6706} |
| `chromeTabs` | {'int': 6706} |
| `chromeTabsProbedProfiles` | {'int': 6706} |
| `chromeUtilityPssKb` | {'int': 6706} |
| `desktopPssKb` | {'int': 6706} |
| `hostPssKb` | {'int': 6706} |
| `kind` | {'str': 6706} |
| `memAvailableKb` | {'int': 6706} |
| `memTotalKb` | {'int': 6706} |
| `otherPssKb` | {'int': 6706} |
| `processes` | {'int': 6706} |
| `pssFallbackProcesses` | {'int': 6706} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

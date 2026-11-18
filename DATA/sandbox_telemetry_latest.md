# sandbox_telemetry_parse — 2026-11-18 09:26:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=762454 lines=1692
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1685 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1685} |
| `chromeGpuPssKb` | {'int': 1685} |
| `chromeOtherPssKb` | {'int': 1685} |
| `chromeProcesses` | {'int': 1685} |
| `chromeProfiles` | {'int': 1685} |
| `chromeRendererMaxPssKb` | {'int': 1685} |
| `chromeRendererPssKb` | {'int': 1685} |
| `chromeRenderers` | {'int': 1685} |
| `chromeTabs` | {'int': 1685} |
| `chromeTabsProbedProfiles` | {'int': 1685} |
| `chromeUtilityPssKb` | {'int': 1685} |
| `desktopPssKb` | {'int': 1685} |
| `hostPssKb` | {'int': 1685} |
| `kind` | {'str': 1685} |
| `memAvailableKb` | {'int': 1685} |
| `memTotalKb` | {'int': 1685} |
| `otherPssKb` | {'int': 1685} |
| `processes` | {'int': 1685} |
| `pssFallbackProcesses` | {'int': 1685} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

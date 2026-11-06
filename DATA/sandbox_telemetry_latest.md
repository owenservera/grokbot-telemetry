# sandbox_telemetry_parse — 2026-11-06 22:52:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=201113 lines=452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 443 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 443} |
| `chromeGpuPssKb` | {'int': 443} |
| `chromeOtherPssKb` | {'int': 443} |
| `chromeProcesses` | {'int': 443} |
| `chromeProfiles` | {'int': 443} |
| `chromeRendererMaxPssKb` | {'int': 443} |
| `chromeRendererPssKb` | {'int': 443} |
| `chromeRenderers` | {'int': 443} |
| `chromeTabs` | {'int': 443} |
| `chromeTabsProbedProfiles` | {'int': 443} |
| `chromeUtilityPssKb` | {'int': 443} |
| `desktopPssKb` | {'int': 443} |
| `hostPssKb` | {'int': 443} |
| `kind` | {'str': 443} |
| `memAvailableKb` | {'int': 443} |
| `memTotalKb` | {'int': 443} |
| `otherPssKb` | {'int': 443} |
| `processes` | {'int': 443} |
| `pssFallbackProcesses` | {'int': 443} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

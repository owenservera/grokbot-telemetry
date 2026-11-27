# sandbox_telemetry_parse — 2026-11-27 08:01:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=317246 lines=708
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 700 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 700} |
| `chromeGpuPssKb` | {'int': 700} |
| `chromeOtherPssKb` | {'int': 700} |
| `chromeProcesses` | {'int': 700} |
| `chromeProfiles` | {'int': 700} |
| `chromeRendererMaxPssKb` | {'int': 700} |
| `chromeRendererPssKb` | {'int': 700} |
| `chromeRenderers` | {'int': 700} |
| `chromeTabs` | {'int': 700} |
| `chromeTabsProbedProfiles` | {'int': 700} |
| `chromeUtilityPssKb` | {'int': 700} |
| `desktopPssKb` | {'int': 700} |
| `hostPssKb` | {'int': 700} |
| `kind` | {'str': 700} |
| `memAvailableKb` | {'int': 700} |
| `memTotalKb` | {'int': 700} |
| `otherPssKb` | {'int': 700} |
| `processes` | {'int': 700} |
| `pssFallbackProcesses` | {'int': 700} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

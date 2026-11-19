# sandbox_telemetry_parse — 2026-11-19 10:37:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1231161 lines=2730
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2721 |
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
| `chromeBrowserPssKb` | {'int': 2721} |
| `chromeGpuPssKb` | {'int': 2721} |
| `chromeOtherPssKb` | {'int': 2721} |
| `chromeProcesses` | {'int': 2721} |
| `chromeProfiles` | {'int': 2721} |
| `chromeRendererMaxPssKb` | {'int': 2721} |
| `chromeRendererPssKb` | {'int': 2721} |
| `chromeRenderers` | {'int': 2721} |
| `chromeTabs` | {'int': 2721} |
| `chromeTabsProbedProfiles` | {'int': 2721} |
| `chromeUtilityPssKb` | {'int': 2721} |
| `desktopPssKb` | {'int': 2721} |
| `hostPssKb` | {'int': 2721} |
| `kind` | {'str': 2721} |
| `memAvailableKb` | {'int': 2721} |
| `memTotalKb` | {'int': 2721} |
| `otherPssKb` | {'int': 2721} |
| `processes` | {'int': 2721} |
| `pssFallbackProcesses` | {'int': 2721} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

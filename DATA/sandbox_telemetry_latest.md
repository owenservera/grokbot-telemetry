# sandbox_telemetry_parse — 2026-11-28 13:29:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=906371 lines=2010
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2002 |
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
| `chromeBrowserPssKb` | {'int': 2002} |
| `chromeGpuPssKb` | {'int': 2002} |
| `chromeOtherPssKb` | {'int': 2002} |
| `chromeProcesses` | {'int': 2002} |
| `chromeProfiles` | {'int': 2002} |
| `chromeRendererMaxPssKb` | {'int': 2002} |
| `chromeRendererPssKb` | {'int': 2002} |
| `chromeRenderers` | {'int': 2002} |
| `chromeTabs` | {'int': 2002} |
| `chromeTabsProbedProfiles` | {'int': 2002} |
| `chromeUtilityPssKb` | {'int': 2002} |
| `desktopPssKb` | {'int': 2002} |
| `hostPssKb` | {'int': 2002} |
| `kind` | {'str': 2002} |
| `memAvailableKb` | {'int': 2002} |
| `memTotalKb` | {'int': 2002} |
| `otherPssKb` | {'int': 2002} |
| `processes` | {'int': 2002} |
| `pssFallbackProcesses` | {'int': 2002} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

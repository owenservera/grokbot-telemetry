# sandbox_telemetry_parse — 2026-11-09 08:58:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=582394 lines=1295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1286 |
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
| `chromeBrowserPssKb` | {'int': 1286} |
| `chromeGpuPssKb` | {'int': 1286} |
| `chromeOtherPssKb` | {'int': 1286} |
| `chromeProcesses` | {'int': 1286} |
| `chromeProfiles` | {'int': 1286} |
| `chromeRendererMaxPssKb` | {'int': 1286} |
| `chromeRendererPssKb` | {'int': 1286} |
| `chromeRenderers` | {'int': 1286} |
| `chromeTabs` | {'int': 1286} |
| `chromeTabsProbedProfiles` | {'int': 1286} |
| `chromeUtilityPssKb` | {'int': 1286} |
| `desktopPssKb` | {'int': 1286} |
| `hostPssKb` | {'int': 1286} |
| `kind` | {'str': 1286} |
| `memAvailableKb` | {'int': 1286} |
| `memTotalKb` | {'int': 1286} |
| `otherPssKb` | {'int': 1286} |
| `processes` | {'int': 1286} |
| `pssFallbackProcesses` | {'int': 1286} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

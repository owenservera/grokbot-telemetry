# sandbox_telemetry_parse — 2026-11-28 14:47:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=930802 lines=2064
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2056 |
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
| `chromeBrowserPssKb` | {'int': 2056} |
| `chromeGpuPssKb` | {'int': 2056} |
| `chromeOtherPssKb` | {'int': 2056} |
| `chromeProcesses` | {'int': 2056} |
| `chromeProfiles` | {'int': 2056} |
| `chromeRendererMaxPssKb` | {'int': 2056} |
| `chromeRendererPssKb` | {'int': 2056} |
| `chromeRenderers` | {'int': 2056} |
| `chromeTabs` | {'int': 2056} |
| `chromeTabsProbedProfiles` | {'int': 2056} |
| `chromeUtilityPssKb` | {'int': 2056} |
| `desktopPssKb` | {'int': 2056} |
| `hostPssKb` | {'int': 2056} |
| `kind` | {'str': 2056} |
| `memAvailableKb` | {'int': 2056} |
| `memTotalKb` | {'int': 2056} |
| `otherPssKb` | {'int': 2056} |
| `processes` | {'int': 2056} |
| `pssFallbackProcesses` | {'int': 2056} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-11-12 01:58:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1920061 lines=4251
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4242 |
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
| `chromeBrowserPssKb` | {'int': 4242} |
| `chromeGpuPssKb` | {'int': 4242} |
| `chromeOtherPssKb` | {'int': 4242} |
| `chromeProcesses` | {'int': 4242} |
| `chromeProfiles` | {'int': 4242} |
| `chromeRendererMaxPssKb` | {'int': 4242} |
| `chromeRendererPssKb` | {'int': 4242} |
| `chromeRenderers` | {'int': 4242} |
| `chromeTabs` | {'int': 4242} |
| `chromeTabsProbedProfiles` | {'int': 4242} |
| `chromeUtilityPssKb` | {'int': 4242} |
| `desktopPssKb` | {'int': 4242} |
| `hostPssKb` | {'int': 4242} |
| `kind` | {'str': 4242} |
| `memAvailableKb` | {'int': 4242} |
| `memTotalKb` | {'int': 4242} |
| `otherPssKb` | {'int': 4242} |
| `processes` | {'int': 4242} |
| `pssFallbackProcesses` | {'int': 4242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

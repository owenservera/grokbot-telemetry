# sandbox_telemetry_parse — 2026-11-20 01:12:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1519982 lines=3370
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3359 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3359} |
| `chromeGpuPssKb` | {'int': 3359} |
| `chromeOtherPssKb` | {'int': 3359} |
| `chromeProcesses` | {'int': 3359} |
| `chromeProfiles` | {'int': 3359} |
| `chromeRendererMaxPssKb` | {'int': 3359} |
| `chromeRendererPssKb` | {'int': 3359} |
| `chromeRenderers` | {'int': 3359} |
| `chromeTabs` | {'int': 3359} |
| `chromeTabsProbedProfiles` | {'int': 3359} |
| `chromeUtilityPssKb` | {'int': 3359} |
| `desktopPssKb` | {'int': 3359} |
| `hostPssKb` | {'int': 3359} |
| `kind` | {'str': 3359} |
| `memAvailableKb` | {'int': 3359} |
| `memTotalKb` | {'int': 3359} |
| `otherPssKb` | {'int': 3359} |
| `processes` | {'int': 3359} |
| `pssFallbackProcesses` | {'int': 3359} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

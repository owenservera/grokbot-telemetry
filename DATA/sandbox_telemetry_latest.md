# sandbox_telemetry_parse — 2026-11-20 13:26:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1732469 lines=3840
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3829 |
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
| `chromeBrowserPssKb` | {'int': 3829} |
| `chromeGpuPssKb` | {'int': 3829} |
| `chromeOtherPssKb` | {'int': 3829} |
| `chromeProcesses` | {'int': 3829} |
| `chromeProfiles` | {'int': 3829} |
| `chromeRendererMaxPssKb` | {'int': 3829} |
| `chromeRendererPssKb` | {'int': 3829} |
| `chromeRenderers` | {'int': 3829} |
| `chromeTabs` | {'int': 3829} |
| `chromeTabsProbedProfiles` | {'int': 3829} |
| `chromeUtilityPssKb` | {'int': 3829} |
| `desktopPssKb` | {'int': 3829} |
| `hostPssKb` | {'int': 3829} |
| `kind` | {'str': 3829} |
| `memAvailableKb` | {'int': 3829} |
| `memTotalKb` | {'int': 3829} |
| `otherPssKb` | {'int': 3829} |
| `processes` | {'int': 3829} |
| `pssFallbackProcesses` | {'int': 3829} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

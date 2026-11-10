# sandbox_telemetry_parse — 2026-11-10 18:13:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1260325 lines=2793
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2784 |
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
| `chromeBrowserPssKb` | {'int': 2784} |
| `chromeGpuPssKb` | {'int': 2784} |
| `chromeOtherPssKb` | {'int': 2784} |
| `chromeProcesses` | {'int': 2784} |
| `chromeProfiles` | {'int': 2784} |
| `chromeRendererMaxPssKb` | {'int': 2784} |
| `chromeRendererPssKb` | {'int': 2784} |
| `chromeRenderers` | {'int': 2784} |
| `chromeTabs` | {'int': 2784} |
| `chromeTabsProbedProfiles` | {'int': 2784} |
| `chromeUtilityPssKb` | {'int': 2784} |
| `desktopPssKb` | {'int': 2784} |
| `hostPssKb` | {'int': 2784} |
| `kind` | {'str': 2784} |
| `memAvailableKb` | {'int': 2784} |
| `memTotalKb` | {'int': 2784} |
| `otherPssKb` | {'int': 2784} |
| `processes` | {'int': 2784} |
| `pssFallbackProcesses` | {'int': 2784} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 01:16:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=65402 lines=148
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 143 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 143} |
| `chromeGpuPssKb` | {'int': 143} |
| `chromeOtherPssKb` | {'int': 143} |
| `chromeProcesses` | {'int': 143} |
| `chromeProfiles` | {'int': 143} |
| `chromeRendererMaxPssKb` | {'int': 143} |
| `chromeRendererPssKb` | {'int': 143} |
| `chromeRenderers` | {'int': 143} |
| `chromeTabs` | {'int': 143} |
| `chromeTabsProbedProfiles` | {'int': 143} |
| `chromeUtilityPssKb` | {'int': 143} |
| `desktopPssKb` | {'int': 143} |
| `hostPssKb` | {'int': 143} |
| `kind` | {'str': 143} |
| `memAvailableKb` | {'int': 143} |
| `memTotalKb` | {'int': 143} |
| `otherPssKb` | {'int': 143} |
| `processes` | {'int': 143} |
| `pssFallbackProcesses` | {'int': 143} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

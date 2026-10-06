# sandbox_telemetry_parse — 2026-10-06 09:24:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=286106 lines=632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 627 |
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
| `chromeBrowserPssKb` | {'int': 627} |
| `chromeGpuPssKb` | {'int': 627} |
| `chromeOtherPssKb` | {'int': 627} |
| `chromeProcesses` | {'int': 627} |
| `chromeProfiles` | {'int': 627} |
| `chromeRendererMaxPssKb` | {'int': 627} |
| `chromeRendererPssKb` | {'int': 627} |
| `chromeRenderers` | {'int': 627} |
| `chromeTabs` | {'int': 627} |
| `chromeTabsProbedProfiles` | {'int': 627} |
| `chromeUtilityPssKb` | {'int': 627} |
| `desktopPssKb` | {'int': 627} |
| `hostPssKb` | {'int': 627} |
| `kind` | {'str': 627} |
| `memAvailableKb` | {'int': 627} |
| `memTotalKb` | {'int': 627} |
| `otherPssKb` | {'int': 627} |
| `processes` | {'int': 627} |
| `pssFallbackProcesses` | {'int': 627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

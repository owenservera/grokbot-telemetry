# sandbox_telemetry_parse — 2026-10-26 17:31:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=46134 lines=106
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 101 |
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
| `chromeBrowserPssKb` | {'int': 101} |
| `chromeGpuPssKb` | {'int': 101} |
| `chromeOtherPssKb` | {'int': 101} |
| `chromeProcesses` | {'int': 101} |
| `chromeProfiles` | {'int': 101} |
| `chromeRendererMaxPssKb` | {'int': 101} |
| `chromeRendererPssKb` | {'int': 101} |
| `chromeRenderers` | {'int': 101} |
| `chromeTabs` | {'int': 101} |
| `chromeTabsProbedProfiles` | {'int': 101} |
| `chromeUtilityPssKb` | {'int': 101} |
| `desktopPssKb` | {'int': 101} |
| `hostPssKb` | {'int': 101} |
| `kind` | {'str': 101} |
| `memAvailableKb` | {'int': 101} |
| `memTotalKb` | {'int': 101} |
| `otherPssKb` | {'int': 101} |
| `processes` | {'int': 101} |
| `pssFallbackProcesses` | {'int': 101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

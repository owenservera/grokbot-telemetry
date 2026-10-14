# sandbox_telemetry_parse — 2026-10-14 19:35:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=451918 lines=1004
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 999 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 999} |
| `chromeGpuPssKb` | {'int': 999} |
| `chromeOtherPssKb` | {'int': 999} |
| `chromeProcesses` | {'int': 999} |
| `chromeProfiles` | {'int': 999} |
| `chromeRendererMaxPssKb` | {'int': 999} |
| `chromeRendererPssKb` | {'int': 999} |
| `chromeRenderers` | {'int': 999} |
| `chromeTabs` | {'int': 999} |
| `chromeTabsProbedProfiles` | {'int': 999} |
| `chromeUtilityPssKb` | {'int': 999} |
| `desktopPssKb` | {'int': 999} |
| `hostPssKb` | {'int': 999} |
| `kind` | {'str': 999} |
| `memAvailableKb` | {'int': 999} |
| `memTotalKb` | {'int': 999} |
| `otherPssKb` | {'int': 999} |
| `processes` | {'int': 999} |
| `pssFallbackProcesses` | {'int': 999} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

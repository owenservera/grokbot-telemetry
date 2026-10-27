# sandbox_telemetry_parse — 2026-10-27 06:07:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=361652 lines=803
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 798 |
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
| `chromeBrowserPssKb` | {'int': 798} |
| `chromeGpuPssKb` | {'int': 798} |
| `chromeOtherPssKb` | {'int': 798} |
| `chromeProcesses` | {'int': 798} |
| `chromeProfiles` | {'int': 798} |
| `chromeRendererMaxPssKb` | {'int': 798} |
| `chromeRendererPssKb` | {'int': 798} |
| `chromeRenderers` | {'int': 798} |
| `chromeTabs` | {'int': 798} |
| `chromeTabsProbedProfiles` | {'int': 798} |
| `chromeUtilityPssKb` | {'int': 798} |
| `desktopPssKb` | {'int': 798} |
| `hostPssKb` | {'int': 798} |
| `kind` | {'str': 798} |
| `memAvailableKb` | {'int': 798} |
| `memTotalKb` | {'int': 798} |
| `otherPssKb` | {'int': 798} |
| `processes` | {'int': 798} |
| `pssFallbackProcesses` | {'int': 798} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

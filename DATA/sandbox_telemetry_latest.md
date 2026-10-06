# sandbox_telemetry_parse — 2026-10-06 12:00:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=356786 lines=787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 782 |
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
| `chromeBrowserPssKb` | {'int': 782} |
| `chromeGpuPssKb` | {'int': 782} |
| `chromeOtherPssKb` | {'int': 782} |
| `chromeProcesses` | {'int': 782} |
| `chromeProfiles` | {'int': 782} |
| `chromeRendererMaxPssKb` | {'int': 782} |
| `chromeRendererPssKb` | {'int': 782} |
| `chromeRenderers` | {'int': 782} |
| `chromeTabs` | {'int': 782} |
| `chromeTabsProbedProfiles` | {'int': 782} |
| `chromeUtilityPssKb` | {'int': 782} |
| `desktopPssKb` | {'int': 782} |
| `hostPssKb` | {'int': 782} |
| `kind` | {'str': 782} |
| `memAvailableKb` | {'int': 782} |
| `memTotalKb` | {'int': 782} |
| `otherPssKb` | {'int': 782} |
| `processes` | {'int': 782} |
| `pssFallbackProcesses` | {'int': 782} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

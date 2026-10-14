# sandbox_telemetry_parse — 2026-10-14 19:25:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=447398 lines=994
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 989 |
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
| `chromeBrowserPssKb` | {'int': 989} |
| `chromeGpuPssKb` | {'int': 989} |
| `chromeOtherPssKb` | {'int': 989} |
| `chromeProcesses` | {'int': 989} |
| `chromeProfiles` | {'int': 989} |
| `chromeRendererMaxPssKb` | {'int': 989} |
| `chromeRendererPssKb` | {'int': 989} |
| `chromeRenderers` | {'int': 989} |
| `chromeTabs` | {'int': 989} |
| `chromeTabsProbedProfiles` | {'int': 989} |
| `chromeUtilityPssKb` | {'int': 989} |
| `desktopPssKb` | {'int': 989} |
| `hostPssKb` | {'int': 989} |
| `kind` | {'str': 989} |
| `memAvailableKb` | {'int': 989} |
| `memTotalKb` | {'int': 989} |
| `otherPssKb` | {'int': 989} |
| `processes` | {'int': 989} |
| `pssFallbackProcesses` | {'int': 989} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

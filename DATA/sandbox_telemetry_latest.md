# sandbox_telemetry_parse — 2026-10-27 05:27:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=345380 lines=767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 762 |
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
| `chromeBrowserPssKb` | {'int': 762} |
| `chromeGpuPssKb` | {'int': 762} |
| `chromeOtherPssKb` | {'int': 762} |
| `chromeProcesses` | {'int': 762} |
| `chromeProfiles` | {'int': 762} |
| `chromeRendererMaxPssKb` | {'int': 762} |
| `chromeRendererPssKb` | {'int': 762} |
| `chromeRenderers` | {'int': 762} |
| `chromeTabs` | {'int': 762} |
| `chromeTabsProbedProfiles` | {'int': 762} |
| `chromeUtilityPssKb` | {'int': 762} |
| `desktopPssKb` | {'int': 762} |
| `hostPssKb` | {'int': 762} |
| `kind` | {'str': 762} |
| `memAvailableKb` | {'int': 762} |
| `memTotalKb` | {'int': 762} |
| `otherPssKb` | {'int': 762} |
| `processes` | {'int': 762} |
| `pssFallbackProcesses` | {'int': 762} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-27 11:12:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=483769 lines=1073
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1068 |
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
| `chromeBrowserPssKb` | {'int': 1068} |
| `chromeGpuPssKb` | {'int': 1068} |
| `chromeOtherPssKb` | {'int': 1068} |
| `chromeProcesses` | {'int': 1068} |
| `chromeProfiles` | {'int': 1068} |
| `chromeRendererMaxPssKb` | {'int': 1068} |
| `chromeRendererPssKb` | {'int': 1068} |
| `chromeRenderers` | {'int': 1068} |
| `chromeTabs` | {'int': 1068} |
| `chromeTabsProbedProfiles` | {'int': 1068} |
| `chromeUtilityPssKb` | {'int': 1068} |
| `desktopPssKb` | {'int': 1068} |
| `hostPssKb` | {'int': 1068} |
| `kind` | {'str': 1068} |
| `memAvailableKb` | {'int': 1068} |
| `memTotalKb` | {'int': 1068} |
| `otherPssKb` | {'int': 1068} |
| `processes` | {'int': 1068} |
| `pssFallbackProcesses` | {'int': 1068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

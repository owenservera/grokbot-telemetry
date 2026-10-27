# sandbox_telemetry_parse — 2026-10-27 04:46:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=327752 lines=728
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 723 |
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
| `chromeBrowserPssKb` | {'int': 723} |
| `chromeGpuPssKb` | {'int': 723} |
| `chromeOtherPssKb` | {'int': 723} |
| `chromeProcesses` | {'int': 723} |
| `chromeProfiles` | {'int': 723} |
| `chromeRendererMaxPssKb` | {'int': 723} |
| `chromeRendererPssKb` | {'int': 723} |
| `chromeRenderers` | {'int': 723} |
| `chromeTabs` | {'int': 723} |
| `chromeTabsProbedProfiles` | {'int': 723} |
| `chromeUtilityPssKb` | {'int': 723} |
| `desktopPssKb` | {'int': 723} |
| `hostPssKb` | {'int': 723} |
| `kind` | {'str': 723} |
| `memAvailableKb` | {'int': 723} |
| `memTotalKb` | {'int': 723} |
| `otherPssKb` | {'int': 723} |
| `processes` | {'int': 723} |
| `pssFallbackProcesses` | {'int': 723} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

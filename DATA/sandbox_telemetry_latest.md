# sandbox_telemetry_parse — 2026-10-27 07:47:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=400524 lines=889
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 884 |
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
| `chromeBrowserPssKb` | {'int': 884} |
| `chromeGpuPssKb` | {'int': 884} |
| `chromeOtherPssKb` | {'int': 884} |
| `chromeProcesses` | {'int': 884} |
| `chromeProfiles` | {'int': 884} |
| `chromeRendererMaxPssKb` | {'int': 884} |
| `chromeRendererPssKb` | {'int': 884} |
| `chromeRenderers` | {'int': 884} |
| `chromeTabs` | {'int': 884} |
| `chromeTabsProbedProfiles` | {'int': 884} |
| `chromeUtilityPssKb` | {'int': 884} |
| `desktopPssKb` | {'int': 884} |
| `hostPssKb` | {'int': 884} |
| `kind` | {'str': 884} |
| `memAvailableKb` | {'int': 884} |
| `memTotalKb` | {'int': 884} |
| `otherPssKb` | {'int': 884} |
| `processes` | {'int': 884} |
| `pssFallbackProcesses` | {'int': 884} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

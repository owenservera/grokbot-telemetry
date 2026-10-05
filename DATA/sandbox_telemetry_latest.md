# sandbox_telemetry_parse — 2026-10-05 17:45:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=115699 lines=441
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 277 |
| `memory_sample` | 152 |
| `chrome_launch` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 152} |
| `chromeGpuPssKb` | {'int': 152} |
| `chromeOtherPssKb` | {'int': 152} |
| `chromeProcesses` | {'int': 152} |
| `chromeProfiles` | {'int': 152} |
| `chromeRendererMaxPssKb` | {'int': 152} |
| `chromeRendererPssKb` | {'int': 152} |
| `chromeRenderers` | {'int': 152} |
| `chromeTabs` | {'int': 152} |
| `chromeTabsProbedProfiles` | {'int': 152} |
| `chromeUtilityPssKb` | {'int': 152} |
| `desktopPssKb` | {'int': 152} |
| `hostPssKb` | {'int': 152} |
| `kind` | {'str': 152} |
| `memAvailableKb` | {'int': 152} |
| `memTotalKb` | {'int': 152} |
| `otherPssKb` | {'int': 152} |
| `processes` | {'int': 152} |
| `pssFallbackProcesses` | {'int': 152} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 272} |
| `display` | {'int': 277} |
| `kind` | {'str': 277} |
| `processes` | {'int': 277} |
| `pssKb` | {'int': 277} |
| `rendererMaxPssKb` | {'int': 277} |
| `renderers` | {'int': 277} |
| `tabs` | {'int': 277} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

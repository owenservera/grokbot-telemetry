# sandbox_telemetry_parse — 2026-10-13 00:16:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=714817 lines=1605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1568 |
| `chrome_profile_sample` | 29 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1568} |
| `chromeGpuPssKb` | {'int': 1568} |
| `chromeOtherPssKb` | {'int': 1568} |
| `chromeProcesses` | {'int': 1568} |
| `chromeProfiles` | {'int': 1568} |
| `chromeRendererMaxPssKb` | {'int': 1568} |
| `chromeRendererPssKb` | {'int': 1568} |
| `chromeRenderers` | {'int': 1568} |
| `chromeTabs` | {'int': 1568} |
| `chromeTabsProbedProfiles` | {'int': 1568} |
| `chromeUtilityPssKb` | {'int': 1568} |
| `desktopPssKb` | {'int': 1568} |
| `hostPssKb` | {'int': 1568} |
| `kind` | {'str': 1568} |
| `memAvailableKb` | {'int': 1568} |
| `memTotalKb` | {'int': 1568} |
| `otherPssKb` | {'int': 1568} |
| `processes` | {'int': 1568} |
| `pssFallbackProcesses` | {'int': 1568} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 28} |
| `display` | {'int': 29} |
| `kind` | {'str': 29} |
| `processes` | {'int': 29} |
| `pssKb` | {'int': 29} |
| `rendererMaxPssKb` | {'int': 29} |
| `renderers` | {'int': 29} |
| `tabs` | {'int': 29} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

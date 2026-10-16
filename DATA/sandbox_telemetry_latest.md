# sandbox_telemetry_parse — 2026-10-16 13:13:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=474662 lines=1774
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1170 |
| `memory_sample` | 595 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 595} |
| `chromeGpuPssKb` | {'int': 595} |
| `chromeOtherPssKb` | {'int': 595} |
| `chromeProcesses` | {'int': 595} |
| `chromeProfiles` | {'int': 595} |
| `chromeRendererMaxPssKb` | {'int': 595} |
| `chromeRendererPssKb` | {'int': 595} |
| `chromeRenderers` | {'int': 595} |
| `chromeTabs` | {'int': 595} |
| `chromeTabsProbedProfiles` | {'int': 595} |
| `chromeUtilityPssKb` | {'int': 595} |
| `desktopPssKb` | {'int': 595} |
| `hostPssKb` | {'int': 595} |
| `kind` | {'str': 595} |
| `memAvailableKb` | {'int': 595} |
| `memTotalKb` | {'int': 595} |
| `otherPssKb` | {'int': 595} |
| `processes` | {'int': 595} |
| `pssFallbackProcesses` | {'int': 595} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1167} |
| `display` | {'int': 1170} |
| `kind` | {'str': 1170} |
| `processes` | {'int': 1170} |
| `pssKb` | {'int': 1170} |
| `rendererMaxPssKb` | {'int': 1170} |
| `renderers` | {'int': 1170} |
| `tabs` | {'int': 1169} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

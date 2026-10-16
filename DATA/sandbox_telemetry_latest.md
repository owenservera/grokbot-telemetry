# sandbox_telemetry_parse — 2026-10-16 18:46:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=733926 lines=2743
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1816 |
| `memory_sample` | 918 |
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
| `chromeBrowserPssKb` | {'int': 918} |
| `chromeGpuPssKb` | {'int': 918} |
| `chromeOtherPssKb` | {'int': 918} |
| `chromeProcesses` | {'int': 918} |
| `chromeProfiles` | {'int': 918} |
| `chromeRendererMaxPssKb` | {'int': 918} |
| `chromeRendererPssKb` | {'int': 918} |
| `chromeRenderers` | {'int': 918} |
| `chromeTabs` | {'int': 918} |
| `chromeTabsProbedProfiles` | {'int': 918} |
| `chromeUtilityPssKb` | {'int': 918} |
| `desktopPssKb` | {'int': 918} |
| `hostPssKb` | {'int': 918} |
| `kind` | {'str': 918} |
| `memAvailableKb` | {'int': 918} |
| `memTotalKb` | {'int': 918} |
| `otherPssKb` | {'int': 918} |
| `processes` | {'int': 918} |
| `pssFallbackProcesses` | {'int': 918} |

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
| `cpuMillicores` | {'int': 1813} |
| `display` | {'int': 1816} |
| `kind` | {'str': 1816} |
| `processes` | {'int': 1816} |
| `pssKb` | {'int': 1816} |
| `rendererMaxPssKb` | {'int': 1816} |
| `renderers` | {'int': 1816} |
| `tabs` | {'int': 1815} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

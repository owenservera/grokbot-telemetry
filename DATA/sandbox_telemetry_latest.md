# sandbox_telemetry_parse — 2026-10-13 13:45:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1116655 lines=2867
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2199 |
| `chrome_profile_sample` | 660 |
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
| `chromeBrowserPssKb` | {'int': 2199} |
| `chromeGpuPssKb` | {'int': 2199} |
| `chromeOtherPssKb` | {'int': 2199} |
| `chromeProcesses` | {'int': 2199} |
| `chromeProfiles` | {'int': 2199} |
| `chromeRendererMaxPssKb` | {'int': 2199} |
| `chromeRendererPssKb` | {'int': 2199} |
| `chromeRenderers` | {'int': 2199} |
| `chromeTabs` | {'int': 2199} |
| `chromeTabsProbedProfiles` | {'int': 2199} |
| `chromeUtilityPssKb` | {'int': 2199} |
| `desktopPssKb` | {'int': 2199} |
| `hostPssKb` | {'int': 2199} |
| `kind` | {'str': 2199} |
| `memAvailableKb` | {'int': 2199} |
| `memTotalKb` | {'int': 2199} |
| `otherPssKb` | {'int': 2199} |
| `processes` | {'int': 2199} |
| `pssFallbackProcesses` | {'int': 2199} |

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
| `cpuMillicores` | {'int': 659} |
| `display` | {'int': 660} |
| `kind` | {'str': 660} |
| `processes` | {'int': 660} |
| `pssKb` | {'int': 660} |
| `rendererMaxPssKb` | {'int': 660} |
| `renderers` | {'int': 660} |
| `tabs` | {'int': 660} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

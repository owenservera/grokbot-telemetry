# sandbox_telemetry_parse — 2026-10-16 19:33:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=766846 lines=2866
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1898 |
| `memory_sample` | 959 |
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
| `chromeBrowserPssKb` | {'int': 959} |
| `chromeGpuPssKb` | {'int': 959} |
| `chromeOtherPssKb` | {'int': 959} |
| `chromeProcesses` | {'int': 959} |
| `chromeProfiles` | {'int': 959} |
| `chromeRendererMaxPssKb` | {'int': 959} |
| `chromeRendererPssKb` | {'int': 959} |
| `chromeRenderers` | {'int': 959} |
| `chromeTabs` | {'int': 959} |
| `chromeTabsProbedProfiles` | {'int': 959} |
| `chromeUtilityPssKb` | {'int': 959} |
| `desktopPssKb` | {'int': 959} |
| `hostPssKb` | {'int': 959} |
| `kind` | {'str': 959} |
| `memAvailableKb` | {'int': 959} |
| `memTotalKb` | {'int': 959} |
| `otherPssKb` | {'int': 959} |
| `processes` | {'int': 959} |
| `pssFallbackProcesses` | {'int': 959} |

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
| `cpuMillicores` | {'int': 1895} |
| `display` | {'int': 1898} |
| `kind` | {'str': 1898} |
| `processes` | {'int': 1898} |
| `pssKb` | {'int': 1898} |
| `rendererMaxPssKb` | {'int': 1898} |
| `renderers` | {'int': 1898} |
| `tabs` | {'int': 1897} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
